.class public final Lcom/codemao/toolssdk/model/dsbridge/StageSize;
.super Ljava/lang/Object;
.source "IAddImagesOptions.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final height:F

.field private final width:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/codemao/toolssdk/model/dsbridge/StageSize;->width:F

    iput p2, p0, Lcom/codemao/toolssdk/model/dsbridge/StageSize;->height:F

    return-void
.end method


# virtual methods
.method public final getHeight()F
    .registers 2

    .line 22
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/StageSize;->height:F

    return v0
.end method

.method public final getWidth()F
    .registers 2

    .line 22
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/StageSize;->width:F

    return v0
.end method
