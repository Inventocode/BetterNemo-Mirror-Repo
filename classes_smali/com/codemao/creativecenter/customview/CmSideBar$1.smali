.class Lcom/codemao/creativecenter/customview/CmSideBar$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "CmSideBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CmSideBar;->setSidebarVM(Lcom/codemao/creativecenter/vm/SidebarVM;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CmSideBar;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CmSideBar;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .registers 7

    .line 61
    check-cast p1, Landroidx/databinding/ObservableField;

    .line 62
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->run:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 64
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->menu:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->line:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->back:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->restore:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->blockRestore:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->blockBack:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 71
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

    invoke-virtual {p2, v2}, Lcom/codemao/creativecenter/customview/CmSwitchView;->setRun(Z)V

    .line 73
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->sideBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "#4F218E"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 74
    invoke-virtual {p1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_132

    if-eqz p1, :cond_105

    if-eq p1, v1, :cond_c2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_aa

    goto/16 :goto_14e

    .line 76
    :cond_aa
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->menu:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->line:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_14e

    .line 98
    :cond_c2
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 99
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->ivCurrentActor:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->menu:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->line:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->blockRestore:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->blockBack:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_14e

    .line 92
    :cond_105
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->menu:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->line:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->back:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->restore:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_14e

    .line 80
    :cond_132
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->sw:Lcom/codemao/creativecenter/customview/CmSwitchView;

    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/customview/CmSwitchView;->setRun(Z)V

    .line 81
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->sideBackground:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string p2, "#221a46"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 108
    :goto_14e
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/CmSideBar;->isHasVideo()Z

    move-result p1

    if-eqz p1, :cond_174

    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object p1

    iget-boolean p1, p1, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-nez p1, :cond_174

    .line 109
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->blockRestore:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/CmSideBar$1;->this$0:Lcom/codemao/creativecenter/customview/CmSideBar;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/CmSideBar;->access$000(Lcom/codemao/creativecenter/customview/CmSideBar;)Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutSidebarBinding;->restore:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_174
    return-void
.end method
