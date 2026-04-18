.class public Lcom/codemao/creativecenter/event/RectEvent;
.super Ljava/lang/Object;
.source "RectEvent.java"


# instance fields
.field public rect:Landroid/graphics/Rect;

.field public workUid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/codemao/creativecenter/event/RectEvent;->rect:Landroid/graphics/Rect;

    .line 19
    iput-object p1, p0, Lcom/codemao/creativecenter/event/RectEvent;->workUid:Ljava/lang/String;

    return-void
.end method
