.class Lcom/codemao/creativestore/bean/Offset;
.super Ljava/lang/Object;
.source "VariableVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput p1, p0, Lcom/codemao/creativestore/bean/Offset;->x:F

    .line 222
    iput p2, p0, Lcom/codemao/creativestore/bean/Offset;->y:F

    return-void
.end method


# virtual methods
.method public getX()F
    .registers 2

    .line 226
    iget v0, p0, Lcom/codemao/creativestore/bean/Offset;->x:F

    return v0
.end method

.method public getY()F
    .registers 2

    .line 234
    iget v0, p0, Lcom/codemao/creativestore/bean/Offset;->y:F

    return v0
.end method

.method public setX(F)V
    .registers 2

    .line 230
    iput p1, p0, Lcom/codemao/creativestore/bean/Offset;->x:F

    return-void
.end method

.method public setY(F)V
    .registers 2

    .line 238
    iput p1, p0, Lcom/codemao/creativestore/bean/Offset;->y:F

    return-void
.end method
