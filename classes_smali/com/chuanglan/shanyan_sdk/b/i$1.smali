.class Lcom/chuanglan/shanyan_sdk/b/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/b/i;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/chuanglan/shanyan_sdk/b/i;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/b/i;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/b/i$1;->b:Lcom/chuanglan/shanyan_sdk/b/i;

    iput-object p2, p0, Lcom/chuanglan/shanyan_sdk/b/i$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/b/i$1;->b:Lcom/chuanglan/shanyan_sdk/b/i;

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/b/i$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/chuanglan/shanyan_sdk/b/i;->a(Lcom/chuanglan/shanyan_sdk/b/i;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/b/i$1;->a:Landroid/content/Context;

    sget-object v2, Lcom/chuanglan/shanyan_sdk/utils/w;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_f

    :catch_f
    return-void
.end method
