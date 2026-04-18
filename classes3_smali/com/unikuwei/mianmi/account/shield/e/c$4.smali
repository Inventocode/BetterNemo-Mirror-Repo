.class Lcom/unikuwei/mianmi/account/shield/e/c$4;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unikuwei/mianmi/account/shield/e/c;->a(Landroid/content/Context;Lcom/unikuwei/mianmi/account/shield/e/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unikuwei/mianmi/account/shield/e/c;


# direct methods
.method constructor <init>(Lcom/unikuwei/mianmi/account/shield/e/c;)V
    .registers 2

    iput-object p1, p0, Lcom/unikuwei/mianmi/account/shield/e/c$4;->a:Lcom/unikuwei/mianmi/account/shield/e/c;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/unikuwei/mianmi/account/shield/e/c$4;->a:Lcom/unikuwei/mianmi/account/shield/e/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/unikuwei/mianmi/account/shield/e/c;->a(Lcom/unikuwei/mianmi/account/shield/e/c;ZLandroid/net/Network;)V

    return-void
.end method
