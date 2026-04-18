.class Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$8;->a:Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$8;->a:Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->a(Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$8;->a:Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->u(Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$8;->a:Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->a(Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$8;->a:Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->u(Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$8;->a:Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->v(Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2f
    return-void
.end method
