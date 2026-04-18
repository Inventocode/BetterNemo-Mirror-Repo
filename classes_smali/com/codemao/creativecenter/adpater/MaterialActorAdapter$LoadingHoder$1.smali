.class Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "MaterialActorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;)V
    .registers 2

    .line 460
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder$1;->this$1:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .registers 4

    .line 463
    sget v0, Lcom/codemao/creativecenter/BR;->downlaodStatus:I

    if-ne p2, v0, :cond_b

    .line 464
    check-cast p1, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;

    .line 465
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder$1;->this$1:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;->access$700(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;)V

    :cond_b
    return-void
.end method
