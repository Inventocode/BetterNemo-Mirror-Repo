.class Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;I)V
    .registers 3

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$7;->b:Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;

    iput p2, p0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$7;->b:Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->t(Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$7;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$7;->b:Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->finish()V

    :cond_19
    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$7;->b:Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->t(Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$7;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->getShanYanCustomInterface()Lcom/chuanglan/shanyan_sdk/listener/ShanYanCustomInterface;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$7;->b:Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;

    invoke-static {v0}, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->t(Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$7;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;

    invoke-virtual {v0}, Lcom/chuanglan/shanyan_sdk/tool/CLCustomViewSetting;->getShanYanCustomInterface()Lcom/chuanglan/shanyan_sdk/listener/ShanYanCustomInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$7;->b:Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;

    invoke-static {v1}, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->f(Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/chuanglan/shanyan_sdk/listener/ShanYanCustomInterface;->onClick(Landroid/content/Context;Landroid/view/View;)V

    :cond_48
    return-void
.end method
