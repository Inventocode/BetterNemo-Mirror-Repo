.class public Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$RecordHolder;
.super Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;
.source "MaterialActorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecordHolder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBinding;)V
    .registers 3

    .line 808
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 809
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$400(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialRecorderBinding;->setIsPad(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 2

    .line 814
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->unbind()V

    return-void
.end method
