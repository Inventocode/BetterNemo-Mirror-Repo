.class public Lcom/codemao/nemo/event/ViewHolderEV;
.super Ljava/lang/Object;
.source "ViewHolderEV.java"


# instance fields
.field public clsName:Ljava/lang/String;

.field public mHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/codemao/nemo/event/ViewHolderEV;->clsName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/codemao/nemo/event/ViewHolderEV;->mHolder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    return-void
.end method
