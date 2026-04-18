.class final Lcom/codemao/creativecenter/vcs/pop/CanNotDeleteExtensionTipsPop$initPopupContent$1;
.super Ljava/lang/Object;
.source "CanNotDeleteExtensionTipsPop.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/pop/CanNotDeleteExtensionTipsPop;->initPopupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/pop/CanNotDeleteExtensionTipsPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/pop/CanNotDeleteExtensionTipsPop;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/CanNotDeleteExtensionTipsPop$initPopupContent$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/CanNotDeleteExtensionTipsPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 22
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 25
    :cond_7
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/CanNotDeleteExtensionTipsPop$initPopupContent$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/CanNotDeleteExtensionTipsPop;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
