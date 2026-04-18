.class public final Lcom/codemao/creativecenter/customview/CmStageDashboardView$bindData$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "CmStageDashboardView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CmStageDashboardView;->bindData(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/view/LocalBcmView;Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CmStageDashboardView;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CmStageDashboardView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView$bindData$1;->this$0:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    .line 148
    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .registers 3

    const-string p2, "sender"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView$bindData$1;->this$0:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->access$refreshStatus(Lcom/codemao/creativecenter/customview/CmStageDashboardView;)V

    return-void
.end method
