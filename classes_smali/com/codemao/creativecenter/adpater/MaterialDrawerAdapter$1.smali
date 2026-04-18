.class Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "MaterialDrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .registers 4

    .line 90
    sget v0, Lcom/codemao/creativecenter/BR;->selected:I

    if-ne p2, v0, :cond_27

    .line 91
    check-cast p1, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 92
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;

    invoke-static {p2}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;->access$000(Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;)Landroidx/databinding/ObservableField;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 93
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 95
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;->access$100(Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;I)V

    goto :goto_27

    .line 97
    :cond_22
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;->access$200(Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;I)V

    :cond_27
    :goto_27
    return-void
.end method
