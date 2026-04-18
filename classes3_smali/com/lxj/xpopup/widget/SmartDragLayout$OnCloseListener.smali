.class public interface abstract Lcom/lxj/xpopup/widget/SmartDragLayout$OnCloseListener;
.super Ljava/lang/Object;
.source "SmartDragLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lxj/xpopup/widget/SmartDragLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCloseListener"
.end annotation


# virtual methods
.method public abstract onClose()V
.end method

.method public abstract onDrag(IFZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "y",
            "percent",
            "isScrollUp"
        }
    .end annotation
.end method

.method public abstract onOpen()V
.end method
