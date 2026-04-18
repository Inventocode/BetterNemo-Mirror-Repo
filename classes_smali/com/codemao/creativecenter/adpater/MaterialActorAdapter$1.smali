.class Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "MaterialActorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .registers 4

    .line 83
    sget v0, Lcom/codemao/creativecenter/BR;->selected:I

    if-ne p2, v0, :cond_17

    .line 84
    check-cast p1, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 85
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 87
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$000(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    goto :goto_17

    .line 89
    :cond_12
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$100(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    :cond_17
    :goto_17
    return-void
.end method
