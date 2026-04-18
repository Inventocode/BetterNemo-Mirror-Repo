.class public abstract Lcom/codemao/nemo/view/flowlayout/TagAdapter;
.super Ljava/lang/Object;
.source "TagAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/flowlayout/TagAdapter$OnDataChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCheckedPosList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mOnDataChangedListener:Lcom/codemao/nemo/view/flowlayout/TagAdapter$OnDataChangedListener;

.field private mTagDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/flowlayout/TagAdapter;->mCheckedPosList:Ljava/util/HashSet;

    .line 19
    iput-object p1, p0, Lcom/codemao/nemo/view/flowlayout/TagAdapter;->mTagDatas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public adjustData(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/codemao/nemo/view/flowlayout/TagAdapter;->mTagDatas:Ljava/util/List;

    return-void
.end method

.method public getCount()I
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/codemao/nemo/view/flowlayout/TagAdapter;->mTagDatas:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/codemao/nemo/view/flowlayout/TagAdapter;->mTagDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getPreCheckedList()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/codemao/nemo/view/flowlayout/TagAdapter;->mCheckedPosList:Ljava/util/HashSet;

    return-object v0
.end method

.method public abstract getView(Lcom/codemao/nemo/view/flowlayout/FlowLayout;ILjava/lang/Object;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/view/flowlayout/FlowLayout;",
            "ITT;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public notifyDataChanged()V
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/codemao/nemo/view/flowlayout/TagAdapter;->mOnDataChangedListener:Lcom/codemao/nemo/view/flowlayout/TagAdapter$OnDataChangedListener;

    if-eqz v0, :cond_7

    .line 64
    invoke-interface {v0}, Lcom/codemao/nemo/view/flowlayout/TagAdapter$OnDataChangedListener;->onChanged()V

    :cond_7
    return-void
.end method

.method public onSelected(ILandroid/view/View;)V
    .registers 4

    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSelected "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "zhy"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method setOnDataChangedListener(Lcom/codemao/nemo/view/flowlayout/TagAdapter$OnDataChangedListener;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/codemao/nemo/view/flowlayout/TagAdapter;->mOnDataChangedListener:Lcom/codemao/nemo/view/flowlayout/TagAdapter$OnDataChangedListener;

    return-void
.end method

.method public setSelected(ILjava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public unSelected(ILandroid/view/View;)V
    .registers 4

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unSelected "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "zhy"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
