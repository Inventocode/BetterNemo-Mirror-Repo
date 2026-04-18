.class interface abstract Lcom/lxj/xpopup/photoview/OnGestureListener;
.super Ljava/lang/Object;
.source "OnGestureListener.java"


# virtual methods
.method public abstract onDrag(FF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
        }
    .end annotation
.end method

.method public abstract onFling(FFFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startX",
            "startY",
            "velocityX",
            "velocityY"
        }
    .end annotation
.end method

.method public abstract onScale(FFF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "scaleFactor",
            "focusX",
            "focusY"
        }
    .end annotation
.end method
