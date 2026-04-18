.class Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->i()V
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

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$6;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$6;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->a(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$6;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->m(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$6;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->a(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$6;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->n(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity$6;->a:Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;->m(Lcom/chuanglan/shanyan_sdk/view/CmccLoginActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2e
    return-void
.end method
