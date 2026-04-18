.class public final Lcom/codemao/creativecenter/customview/CmStageDashboardView$onPropertyChangedCallback$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "CmStageDashboardView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CmStageDashboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    .line 527
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView$onPropertyChangedCallback$1;->this$0:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .registers 3

    const-string p2, "sender"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView$onPropertyChangedCallback$1;->this$0:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->getStageDashboardItemVM()Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    move-result-object p1

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getRevertSelected()Landroidx/databinding/ObservableField;

    move-result-object p1

    if-eqz p1, :cond_27

    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmStageDashboardView$onPropertyChangedCallback$1;->this$0:Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->access$getCurrentActor$p(Lcom/codemao/creativecenter/customview/CmStageDashboardView;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p2

    if-eqz p2, :cond_22

    iget-boolean p2, p2, Lcom/codemao/creativestore/bean/ActorVO;->can_reset:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_24

    :cond_22
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_24
    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_27
    return-void
.end method
