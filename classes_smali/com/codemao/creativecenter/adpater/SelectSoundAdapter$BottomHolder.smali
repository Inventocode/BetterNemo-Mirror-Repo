.class public Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BottomHolder;
.super Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;
.source "SelectSoundAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BottomHolder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBinding;)V
    .registers 3

    .line 306
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;-><init>(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 307
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$300(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterChangeSoundFooterBinding;->setIsPad(Ljava/lang/Boolean;)V

    .line 308
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    return-void
.end method
