.class final Lcn/com/chinatelecom/account/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Ljava/util/List;

.field private synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .registers 4

    iput-object p1, p0, Lcn/com/chinatelecom/account/a/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/com/chinatelecom/account/a/c;->b:Ljava/util/List;

    iput p3, p0, Lcn/com/chinatelecom/account/a/c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcn/com/chinatelecom/account/a/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/com/chinatelecom/account/a/c;->b:Ljava/util/List;

    iget v2, p0, Lcn/com/chinatelecom/account/a/c;->c:I

    invoke-static {v0, v1, v2}, Lcn/com/chinatelecom/account/a/b;->a(Landroid/content/Context;Ljava/util/List;I)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_47

    iget-object v1, p0, Lcn/com/chinatelecom/account/a/c;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/com/chinatelecom/account/a/b;->a(Landroid/content/Context;Ljava/util/Queue;)Ljava/lang/String;

    move-result-object v1
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_48

    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_33

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_23} :catch_2f
    .catchall {:try_start_18 .. :try_end_23} :catchall_48

    :try_start_23
    const-string v1, "code"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_29} :catch_2c
    .catchall {:try_start_23 .. :try_end_29} :catchall_48

    move v3, v1

    move-object v2, v4

    goto :goto_33

    :catch_2c
    move-exception v1

    move-object v2, v4

    goto :goto_30

    :catch_2f
    move-exception v1

    :goto_30
    :try_start_30
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_33
    :goto_33
    if-eqz v2, :cond_40

    if-nez v3, :cond_40

    iget-object v1, p0, Lcn/com/chinatelecom/account/a/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/com/chinatelecom/account/a/b;->a(Landroid/content/Context;)V

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    goto :goto_4c

    :cond_40
    iget-object v1, p0, Lcn/com/chinatelecom/account/a/c;->a:Landroid/content/Context;

    iget v2, p0, Lcn/com/chinatelecom/account/a/c;->c:I

    invoke-static {v1, v0, v2}, Lcn/com/chinatelecom/account/a/b;->a(Landroid/content/Context;Ljava/util/Queue;I)V
    :try_end_47
    .catchall {:try_start_30 .. :try_end_47} :catchall_48

    :cond_47
    return-void

    :catchall_48
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4c
    return-void
.end method
