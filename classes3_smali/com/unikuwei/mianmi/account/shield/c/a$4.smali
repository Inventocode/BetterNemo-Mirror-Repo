.class Lcom/unikuwei/mianmi/account/shield/c/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unikuwei/mianmi/account/shield/e/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unikuwei/mianmi/account/shield/c/a;->a(Landroid/content/Context;ILcom/unikuwei/mianmi/account/shield/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Lcom/unikuwei/mianmi/account/shield/d/a;

.field final synthetic d:Lcom/unikuwei/mianmi/account/shield/c/a;


# direct methods
.method constructor <init>(Lcom/unikuwei/mianmi/account/shield/c/a;Landroid/content/Context;ILcom/unikuwei/mianmi/account/shield/d/a;)V
    .registers 5

    iput-object p1, p0, Lcom/unikuwei/mianmi/account/shield/c/a$4;->d:Lcom/unikuwei/mianmi/account/shield/c/a;

    iput-object p2, p0, Lcom/unikuwei/mianmi/account/shield/c/a$4;->a:Landroid/content/Context;

    iput p3, p0, Lcom/unikuwei/mianmi/account/shield/c/a$4;->b:I

    iput-object p4, p0, Lcom/unikuwei/mianmi/account/shield/c/a$4;->c:Lcom/unikuwei/mianmi/account/shield/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLandroid/net/Network;)V
    .registers 9

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/unikuwei/mianmi/account/shield/c/a$4;->d:Lcom/unikuwei/mianmi/account/shield/c/a;

    iget-object v1, p0, Lcom/unikuwei/mianmi/account/shield/c/a$4;->a:Landroid/content/Context;

    iget v2, p0, Lcom/unikuwei/mianmi/account/shield/c/a$4;->b:I

    iget-object v5, p0, Lcom/unikuwei/mianmi/account/shield/c/a$4;->c:Lcom/unikuwei/mianmi/account/shield/d/a;

    const-string v3, "https://opencloud.wostore.cn/openapi/netauth/precheck/wp?"

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/unikuwei/mianmi/account/shield/c/a;->a(Lcom/unikuwei/mianmi/account/shield/c/a;Landroid/content/Context;ILjava/lang/String;Landroid/net/Network;Lcom/unikuwei/mianmi/account/shield/d/a;)V

    goto :goto_1a

    :cond_11
    iget-object p1, p0, Lcom/unikuwei/mianmi/account/shield/c/a$4;->c:Lcom/unikuwei/mianmi/account/shield/d/a;

    const/16 p2, 0x2713

    const-string v0, "无法切换至数据网络"

    invoke-interface {p1, p2, v0}, Lcom/unikuwei/mianmi/account/shield/d/a;->a(ILjava/lang/String;)V

    :goto_1a
    return-void
.end method
