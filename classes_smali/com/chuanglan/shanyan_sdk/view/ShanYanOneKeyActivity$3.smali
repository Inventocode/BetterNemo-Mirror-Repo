.class Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->b()V
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

    iput-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$3;->a:Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity$3;->a:Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;

    invoke-static {p1}, Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;->a(Lcom/chuanglan/shanyan_sdk/view/ShanYanOneKeyActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->performClick()Z

    return-void
.end method
