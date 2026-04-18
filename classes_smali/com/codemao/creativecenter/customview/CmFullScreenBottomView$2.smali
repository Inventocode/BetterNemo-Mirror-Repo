.class Lcom/codemao/creativecenter/customview/CmFullScreenBottomView$2;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "CmFullScreenBottomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->bindData(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/view/LocalBcmView;Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
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

    .line 623
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView$2;->this$0:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .registers 3

    .line 626
    check-cast p1, Landroidx/databinding/ObservableField;

    .line 627
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView$2;->this$0:Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    invoke-virtual {p1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_13

    const/16 p1, 0x8

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
