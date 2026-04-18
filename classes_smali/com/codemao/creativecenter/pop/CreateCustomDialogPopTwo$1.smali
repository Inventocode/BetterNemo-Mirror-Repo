.class Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo$1;
.super Ljava/lang/Object;
.source "CreateCustomDialogPopTwo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo$1;->this$0:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const-wide/16 v0, 0x3e8

    .line 59
    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick(J)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 62
    :cond_9
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo$1;->this$0:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
