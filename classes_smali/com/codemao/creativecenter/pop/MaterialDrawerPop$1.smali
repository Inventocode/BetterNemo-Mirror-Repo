.class Lcom/codemao/creativecenter/pop/MaterialDrawerPop$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "MaterialDrawerPop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/pop/MaterialDrawerPop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/MaterialDrawerPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/MaterialDrawerPop;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop$1;->this$0:Lcom/codemao/creativecenter/pop/MaterialDrawerPop;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .registers 7

    .line 43
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop$1;->this$0:Lcom/codemao/creativecenter/pop/MaterialDrawerPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->access$000(Lcom/codemao/creativecenter/pop/MaterialDrawerPop;)Landroidx/databinding/ObservableField;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1e

    .line 44
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop$1;->this$0:Lcom/codemao/creativecenter/pop/MaterialDrawerPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->access$000(Lcom/codemao/creativecenter/pop/MaterialDrawerPop;)Landroidx/databinding/ObservableField;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    .line 46
    :goto_1f
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop$1;->this$0:Lcom/codemao/creativecenter/pop/MaterialDrawerPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->access$200(Lcom/codemao/creativecenter/pop/MaterialDrawerPop;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop$1;->this$0:Lcom/codemao/creativecenter/pop/MaterialDrawerPop;

    invoke-static {v1}, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->access$100(Lcom/codemao/creativecenter/pop/MaterialDrawerPop;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop$1;->this$0:Lcom/codemao/creativecenter/pop/MaterialDrawerPop;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_background_s_chosen:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p2

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_57

    :cond_43
    iget-object v1, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop$1;->this$0:Lcom/codemao/creativecenter/pop/MaterialDrawerPop;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_sprite_s_chosen:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p2

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_57
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/MaterialDrawerPop$1;->this$0:Lcom/codemao/creativecenter/pop/MaterialDrawerPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/MaterialDrawerPop;->access$300(Lcom/codemao/creativecenter/pop/MaterialDrawerPop;)Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
