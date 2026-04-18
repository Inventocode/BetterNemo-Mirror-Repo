.class Lcom/chuanglan/shanyan_sdk/c/a$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/c/a;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/chuanglan/shanyan_sdk/c/a;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/c/a;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/c/a$5;->c:Lcom/chuanglan/shanyan_sdk/c/a;

    iput p2, p0, Lcom/chuanglan/shanyan_sdk/c/a$5;->a:I

    iput-object p3, p0, Lcom/chuanglan/shanyan_sdk/c/a$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a$5;->c:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/c/a;->i(Lcom/chuanglan/shanyan_sdk/c/a;)Lcom/chuanglan/shanyan_sdk/listener/OpenLoginAuthListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a$5;->c:Lcom/chuanglan/shanyan_sdk/c/a;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/c/a;->i(Lcom/chuanglan/shanyan_sdk/c/a;)Lcom/chuanglan/shanyan_sdk/listener/OpenLoginAuthListener;

    move-result-object v0

    iget v1, p0, Lcom/chuanglan/shanyan_sdk/c/a$5;->a:I

    iget-object v2, p0, Lcom/chuanglan/shanyan_sdk/c/a$5;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/chuanglan/shanyan_sdk/listener/OpenLoginAuthListener;->getOpenLoginAuthStatus(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/c/a$5;->c:Lcom/chuanglan/shanyan_sdk/c/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chuanglan/shanyan_sdk/c/a;->a(Lcom/chuanglan/shanyan_sdk/c/a;Lcom/chuanglan/shanyan_sdk/listener/OpenLoginAuthListener;)Lcom/chuanglan/shanyan_sdk/listener/OpenLoginAuthListener;

    :cond_1b
    return-void
.end method
