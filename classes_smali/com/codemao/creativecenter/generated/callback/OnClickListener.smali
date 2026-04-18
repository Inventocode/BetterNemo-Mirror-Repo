.class public final Lcom/codemao/creativecenter/generated/callback/OnClickListener;
.super Ljava/lang/Object;
.source "OnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;
    }
.end annotation


# instance fields
.field final mListener:Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;

.field final mSourceId:I


# direct methods
.method public constructor <init>(Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;I)V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;->mListener:Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;

    .line 7
    iput p2, p0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;->mSourceId:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 11
    iget-object v0, p0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;->mListener:Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;

    iget v1, p0, Lcom/codemao/creativecenter/generated/callback/OnClickListener;->mSourceId:I

    invoke-interface {v0, v1, p1}, Lcom/codemao/creativecenter/generated/callback/OnClickListener$Listener;->_internalCallbackOnClick(ILandroid/view/View;)V

    return-void
.end method
