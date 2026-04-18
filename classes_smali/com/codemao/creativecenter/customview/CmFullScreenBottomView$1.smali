.class Lcom/codemao/creativecenter/customview/CmFullScreenBottomView$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "CmFullScreenBottomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView$1;->this$0:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .registers 3

    .line 93
    sget p1, Lcom/codemao/creativecenter/BR;->can_reset:I

    if-ne p2, p1, :cond_1d

    .line 94
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView$1;->this$0:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->access$100(Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;)Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getRevertSelected()Landroidx/databinding/ObservableField;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView$1;->this$0:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->access$000(Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p2

    iget-boolean p2, p2, Lcom/codemao/creativestore/bean/ActorVO;->can_reset:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method
