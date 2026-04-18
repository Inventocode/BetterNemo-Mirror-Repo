.class public Lcom/codemao/creativestore/bean/ActorVO;
.super Landroidx/databinding/BaseObservable;
.source "ActorVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private blocksXML:Ljava/lang/String;

.field public transient can_reset:Z

.field private current_style_id:Ljava/lang/String;

.field private hidden_in_edit:Z

.field private id:Ljava/lang/String;

.field public transient isBackground:Z

.field public transient isEditStatus:Z

.field public transient isSelected:Z

.field public transient isUploading:Z

.field private locked:Z

.field private name:Ljava/lang/String;

.field private rotation:D

.field private scale:D

.field private scene_id:Ljava/lang/String;

.field public transient showQuiteAnim:Z

.field private styles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private visible:Z

.field private x:D

.field private y:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 224
    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDZDLjava/lang/String;ZLjava/lang/String;)V
    .registers 16

    .line 246
    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    .line 247
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorVO;->id:Ljava/lang/String;

    .line 248
    iput-object p2, p0, Lcom/codemao/creativestore/bean/ActorVO;->current_style_id:Ljava/lang/String;

    .line 249
    iput-object p3, p0, Lcom/codemao/creativestore/bean/ActorVO;->name:Ljava/lang/String;

    .line 250
    iput-wide p4, p0, Lcom/codemao/creativestore/bean/ActorVO;->x:D

    .line 251
    iput-wide p6, p0, Lcom/codemao/creativestore/bean/ActorVO;->y:D

    .line 252
    iput-wide p8, p0, Lcom/codemao/creativestore/bean/ActorVO;->scale:D

    .line 253
    iput-boolean p10, p0, Lcom/codemao/creativestore/bean/ActorVO;->visible:Z

    .line 254
    iput-wide p11, p0, Lcom/codemao/creativestore/bean/ActorVO;->rotation:D

    .line 255
    iput-object p15, p0, Lcom/codemao/creativestore/bean/ActorVO;->scene_id:Ljava/lang/String;

    .line 256
    iput-object p13, p0, Lcom/codemao/creativestore/bean/ActorVO;->blocksXML:Ljava/lang/String;

    .line 257
    iput-boolean p14, p0, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    return-void
.end method


# virtual methods
.method public copy()Lcom/codemao/creativestore/bean/ActorVO;
    .registers 21

    move-object/from16 v0, p0

    .line 262
    new-instance v15, Lcom/codemao/creativestore/bean/ActorVO;

    iget-object v2, v0, Lcom/codemao/creativestore/bean/ActorVO;->id:Ljava/lang/String;

    iget-object v3, v0, Lcom/codemao/creativestore/bean/ActorVO;->current_style_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/codemao/creativestore/bean/ActorVO;->name:Ljava/lang/String;

    iget-wide v5, v0, Lcom/codemao/creativestore/bean/ActorVO;->x:D

    iget-wide v7, v0, Lcom/codemao/creativestore/bean/ActorVO;->y:D

    iget-wide v9, v0, Lcom/codemao/creativestore/bean/ActorVO;->scale:D

    iget-boolean v11, v0, Lcom/codemao/creativestore/bean/ActorVO;->visible:Z

    iget-wide v12, v0, Lcom/codemao/creativestore/bean/ActorVO;->rotation:D

    iget-object v14, v0, Lcom/codemao/creativestore/bean/ActorVO;->blocksXML:Ljava/lang/String;

    iget-boolean v1, v0, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    move-object/from16 v16, v14

    iget-object v14, v0, Lcom/codemao/creativestore/bean/ActorVO;->scene_id:Ljava/lang/String;

    move/from16 v17, v1

    move-object v1, v15

    move-object/from16 v18, v14

    move-object/from16 v14, v16

    move-object/from16 v19, v15

    move/from16 v15, v17

    move-object/from16 v16, v18

    invoke-direct/range {v1 .. v16}, Lcom/codemao/creativestore/bean/ActorVO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDZDLjava/lang/String;ZLjava/lang/String;)V

    .line 263
    iget-boolean v1, v0, Lcom/codemao/creativestore/bean/ActorVO;->locked:Z

    move-object/from16 v2, v19

    invoke-virtual {v2, v1}, Lcom/codemao/creativestore/bean/ActorVO;->setLocked(Z)V

    .line 264
    iget-boolean v1, v0, Lcom/codemao/creativestore/bean/ActorVO;->hidden_in_edit:Z

    invoke-virtual {v2, v1}, Lcom/codemao/creativestore/bean/ActorVO;->setHidden_in_edit(Z)V

    .line 265
    new-instance v1, Ljava/util/Vector;

    iget-object v3, v0, Lcom/codemao/creativestore/bean/ActorVO;->styles:Ljava/util/Vector;

    invoke-direct {v1, v3}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 266
    invoke-virtual {v2, v1}, Lcom/codemao/creativestore/bean/ActorVO;->setStyles(Ljava/util/Vector;)V

    return-object v2
.end method

.method public getBlocksXML()Ljava/lang/String;
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ActorVO;->blocksXML:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrent_style_id()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ActorVO;->current_style_id:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ActorVO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ActorVO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRadian()D
    .registers 3

    .line 212
    iget-wide v0, p0, Lcom/codemao/creativestore/bean/ActorVO;->rotation:D

    return-wide v0
.end method

.method public getRotation()D
    .registers 5

    .line 193
    iget-wide v0, p0, Lcom/codemao/creativestore/bean/ActorVO;->rotation:D

    const-wide v2, 0x4066800000000000L  # 180.0

    mul-double v0, v0, v2

    const-wide v2, 0x400921fb54442d18L  # Math.PI

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getScale()D
    .registers 6

    .line 175
    iget-wide v0, p0, Lcom/codemao/creativestore/bean/ActorVO;->scale:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_e

    const-wide v0, 0x3f50624dd2f1a9fcL  # 0.001

    return-wide v0

    :cond_e
    cmpl-double v4, v0, v2

    if-nez v4, :cond_17

    const-wide v0, -0x40af9db22d0e5604L  # -0.001

    :cond_17
    return-wide v0
.end method

.method public getScene_id()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ActorVO;->scene_id:Ljava/lang/String;

    return-object v0
.end method

.method public getStyles()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ActorVO;->styles:Ljava/util/Vector;

    return-object v0
.end method

.method public getX()D
    .registers 3

    .line 129
    iget-wide v0, p0, Lcom/codemao/creativestore/bean/ActorVO;->x:D

    return-wide v0
.end method

.method public getY()D
    .registers 3

    .line 139
    iget-wide v0, p0, Lcom/codemao/creativestore/bean/ActorVO;->y:D

    return-wide v0
.end method

.method public isBackground()Z
    .registers 2

    .line 156
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    return v0
.end method

.method public isCan_reset()Z
    .registers 2

    .line 65
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/ActorVO;->can_reset:Z

    return v0
.end method

.method public isEditStatus()Z
    .registers 2

    .line 95
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/ActorVO;->isEditStatus:Z

    return v0
.end method

.method public isHidden_in_edit()Z
    .registers 2

    .line 239
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/ActorVO;->hidden_in_edit:Z

    return v0
.end method

.method public isLocked()Z
    .registers 2

    .line 230
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/ActorVO;->locked:Z

    return v0
.end method

.method public isSelected()Z
    .registers 2

    .line 83
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/ActorVO;->isSelected:Z

    return v0
.end method

.method public isShowQuiteAnim()Z
    .registers 2

    .line 110
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/ActorVO;->showQuiteAnim:Z

    return v0
.end method

.method public isUploading()Z
    .registers 2

    .line 36
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/ActorVO;->isUploading:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 165
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/ActorVO;->visible:Z

    return v0
.end method

.method public setBackground(Z)V
    .registers 2

    .line 160
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    return-void
.end method

.method public setBlocksXML(Ljava/lang/String;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorVO;->blocksXML:Ljava/lang/String;

    return-void
.end method

.method public setCan_reset(Z)V
    .registers 2

    .line 69
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/ActorVO;->can_reset:Z

    .line 70
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->can_reset:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public setCurrent_style_id(Ljava/lang/String;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorVO;->current_style_id:Ljava/lang/String;

    .line 60
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->current_style_id:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public setEditStatus(Z)V
    .registers 2

    .line 99
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/ActorVO;->isEditStatus:Z

    .line 100
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->editStatus:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public setHidden_in_edit(Z)V
    .registers 2

    .line 243
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/ActorVO;->hidden_in_edit:Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorVO;->id:Ljava/lang/String;

    return-void
.end method

.method public setLocked(Z)V
    .registers 2

    .line 234
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/ActorVO;->locked:Z

    .line 235
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->locked:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorVO;->name:Ljava/lang/String;

    .line 124
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->name:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public setRadian(D)V
    .registers 3

    .line 207
    iput-wide p1, p0, Lcom/codemao/creativestore/bean/ActorVO;->rotation:D

    .line 208
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->rotation:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public setRotation(D)V
    .registers 5

    const-wide v0, 0x400921fb54442d18L  # Math.PI

    mul-double p1, p1, v0

    const-wide v0, 0x4066800000000000L  # 180.0

    div-double/2addr p1, v0

    .line 199
    iput-wide p1, p0, Lcom/codemao/creativestore/bean/ActorVO;->rotation:D

    .line 200
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->rotation:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public setScale(D)V
    .registers 3

    .line 185
    iput-wide p1, p0, Lcom/codemao/creativestore/bean/ActorVO;->scale:D

    .line 186
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->scale:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public setScene_id(Ljava/lang/String;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorVO;->scene_id:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    .line 89
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/ActorVO;->isSelected:Z

    .line 90
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->selected:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public setShowQuiteAnim(Z)V
    .registers 2

    .line 114
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/ActorVO;->showQuiteAnim:Z

    return-void
.end method

.method public setStyles(Ljava/util/Vector;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ActorVO;->styles:Ljava/util/Vector;

    return-void
.end method

.method public setUploading(Z)V
    .registers 2

    .line 40
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/ActorVO;->isUploading:Z

    .line 41
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->uploading:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    .line 169
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/ActorVO;->visible:Z

    .line 170
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->visible:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public setX(D)V
    .registers 3

    .line 133
    iput-wide p1, p0, Lcom/codemao/creativestore/bean/ActorVO;->x:D

    .line 134
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->x:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public setY(D)V
    .registers 3

    .line 143
    iput-wide p1, p0, Lcom/codemao/creativestore/bean/ActorVO;->y:D

    .line 144
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->y:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public updateEditStatus(Z)V
    .registers 2

    .line 104
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/ActorVO;->isEditStatus:Z

    return-void
.end method
