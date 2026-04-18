.class Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$4;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    const/4 p1, 0x2

    if-eqz p2, :cond_1e

    iget-object p2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$4;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {p2}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->h(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "first_launch"

    const-string v1, "1"

    invoke-static {p2, v0, v1}, Lcom/chuanglan/shanyan_sdk/utils/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$4;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {p2}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->k(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)V

    sget-object p2, Lcom/chuanglan/shanyan_sdk/b;->am:Lcom/chuanglan/shanyan_sdk/listener/AuthPageActionListener;

    if-eqz p2, :cond_2e

    const/4 v0, 0x1

    const-string/jumbo v1, "选中协议复选框"

    goto :goto_2b

    :cond_1e
    iget-object p2, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$4;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {p2}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->l(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)V

    sget-object p2, Lcom/chuanglan/shanyan_sdk/b;->am:Lcom/chuanglan/shanyan_sdk/listener/AuthPageActionListener;

    if-eqz p2, :cond_2e

    const/4 v0, 0x0

    const-string/jumbo v1, "取消选中协议复选框"

    :goto_2b
    invoke-interface {p2, p1, v0, v1}, Lcom/chuanglan/shanyan_sdk/listener/AuthPageActionListener;->setAuthPageActionListener(IILjava/lang/String;)V

    :cond_2e
    return-void
.end method
