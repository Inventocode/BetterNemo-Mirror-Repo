.class public Lcom/sdk/v/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sdk/e/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/v/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sdk/e/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sdk/v/a;


# direct methods
.method public constructor <init>(Lcom/sdk/v/a;I)V
    .registers 3

    iput-object p1, p0, Lcom/sdk/v/a$a;->b:Lcom/sdk/v/a;

    iput p2, p0, Lcom/sdk/v/a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/sdk/v/a$a;->b:Lcom/sdk/v/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sdk/v/a;->a(IILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ITT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sdk/v/a$a;->b:Lcom/sdk/v/a;

    iget-object v0, v0, Lcom/sdk/v/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/sdk/q/b;->b(Landroid/content/Context;)V

    if-nez p1, :cond_59

    iget-object v0, p0, Lcom/sdk/v/a$a;->b:Lcom/sdk/v/a;

    iget-object v0, v0, Lcom/sdk/v/a;->b:Landroid/content/Context;

    iget v1, p0, Lcom/sdk/v/a$a;->a:I

    sget-object v2, Lcom/sdk/b/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CUCC"

    invoke-static {v0, v1, v2, v3}, Lcom/sdk/b/a;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    :try_start_2a
    iget-object v0, p0, Lcom/sdk/v/a$a;->b:Lcom/sdk/v/a;

    iget-object v0, v0, Lcom/sdk/v/a;->b:Landroid/content/Context;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdk/s/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_46

    iget-object v1, p0, Lcom/sdk/v/a$a;->b:Lcom/sdk/v/a;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3a} :catch_59

    const/4 v2, 0x1

    const-string v3, "SDK解密异常"

    const v4, 0x49bb1

    move-object v5, p4

    move-object v6, p5

    :try_start_42
    invoke-virtual/range {v1 .. v6}, Lcom/sdk/v/a;->a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sdk/v/a$a;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_59

    const-string v1, "fakeMobile"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_59} :catch_59

    :catch_59
    :cond_59
    move-object v4, p4

    iget-object v0, p0, Lcom/sdk/v/a$a;->b:Lcom/sdk/v/a;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sdk/v/a;->a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
