.class Lcom/unikuwei/mianmi/account/shield/e/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unikuwei/mianmi/account/shield/e/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/unikuwei/mianmi/account/shield/e/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/unikuwei/mianmi/account/shield/e/c$a;

.field final synthetic d:Lcom/unikuwei/mianmi/account/shield/e/c;


# direct methods
.method constructor <init>(Lcom/unikuwei/mianmi/account/shield/e/c;Landroid/content/Context;Ljava/lang/String;Lcom/unikuwei/mianmi/account/shield/e/c$a;)V
    .registers 5

    iput-object p1, p0, Lcom/unikuwei/mianmi/account/shield/e/c$2;->d:Lcom/unikuwei/mianmi/account/shield/e/c;

    iput-object p2, p0, Lcom/unikuwei/mianmi/account/shield/e/c$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/unikuwei/mianmi/account/shield/e/c$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/unikuwei/mianmi/account/shield/e/c$2;->c:Lcom/unikuwei/mianmi/account/shield/e/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/unikuwei/mianmi/account/shield/e/c$2;->d:Lcom/unikuwei/mianmi/account/shield/e/c;

    iget-object v1, p0, Lcom/unikuwei/mianmi/account/shield/e/c$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/unikuwei/mianmi/account/shield/e/c$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/unikuwei/mianmi/account/shield/e/c;->a(Lcom/unikuwei/mianmi/account/shield/e/c;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/unikuwei/mianmi/account/shield/e/c$2;->c:Lcom/unikuwei/mianmi/account/shield/e/c$a;

    if-eqz v1, :cond_12

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/unikuwei/mianmi/account/shield/e/c$a;->a(ZLandroid/net/Network;)V

    :cond_12
    return-void
.end method
