.class public Lcom/codemao/creativestore/bean/MaterialActorBean;
.super Landroidx/databinding/BaseObservable;
.source "MaterialActorBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativestore/bean/MaterialActorBean$MaterialActorItemType;
    }
.end annotation


# instance fields
.field private category_id:I

.field private centerPoint:Lcom/codemao/creativestore/bean/CenterPoint;

.field private ext:Ljava/lang/String;

.field private id:I

.field public transient isCollectDeleteAble:Z

.field public transient isDeleteSelect:Z

.field public transient isSelected:Z

.field public transient itemType:I

.field private name:Ljava/lang/String;

.field private needRename:Z

.field private path:Ljava/lang/String;

.field public qiniuUrl:Ljava/lang/String;

.field private resourcePathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->itemType:I

    .line 73
    iput-boolean v0, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->needRename:Z

    return-void
.end method

.method public constructor <init>(Lcom/codemao/creativestore/bean/MaterialSoundBean;)V
    .registers 4

    .line 78
    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->itemType:I

    .line 73
    iput-boolean v0, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->needRename:Z

    .line 79
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialSoundBean;->getId()I

    move-result v0

    iput v0, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->id:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->url:Ljava/util/List;

    .line 81
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialSoundBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialSoundBean;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->name:Ljava/lang/String;

    return-void
.end method

.method public static createRecordBean(Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/creativestore/bean/MaterialActorBean;
    .registers 4

    .line 86
    new-instance v0, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/MaterialActorBean;-><init>()V

    const-string v1, "aac"

    .line 87
    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setExt(Ljava/lang/String;)V

    .line 88
    iput-object p0, v0, Lcom/codemao/creativestore/bean/MaterialActorBean;->name:Ljava/lang/String;

    .line 89
    iput-object p1, v0, Lcom/codemao/creativestore/bean/MaterialActorBean;->path:Ljava/lang/String;

    return-object v0
.end method

.method public static createUploadBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/creativestore/bean/MaterialActorBean;
    .registers 5

    .line 94
    new-instance v0, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/MaterialActorBean;-><init>()V

    .line 95
    invoke-virtual {v0, p2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setExt(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 96
    invoke-virtual {v0, p2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setNeedRename(Z)V

    const-string p2, "."

    .line 97
    invoke-virtual {p0, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_20

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/codemao/creativestore/bean/MaterialActorBean;->name:Ljava/lang/String;

    goto :goto_22

    .line 100
    :cond_20
    iput-object p0, v0, Lcom/codemao/creativestore/bean/MaterialActorBean;->name:Ljava/lang/String;

    .line 103
    :goto_22
    iput-object p1, v0, Lcom/codemao/creativestore/bean/MaterialActorBean;->path:Ljava/lang/String;

    return-object v0
.end method

.method public static parseFromMidiBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/creativestore/bean/MaterialActorBean;
    .registers 4

    .line 108
    new-instance v0, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/MaterialActorBean;-><init>()V

    .line 109
    iput-object p0, v0, Lcom/codemao/creativestore/bean/MaterialActorBean;->name:Ljava/lang/String;

    .line 110
    iput-object p1, v0, Lcom/codemao/creativestore/bean/MaterialActorBean;->path:Ljava/lang/String;

    .line 111
    iput-object p2, v0, Lcom/codemao/creativestore/bean/MaterialActorBean;->ext:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public canAnim()Z
    .registers 3

    .line 293
    iget-object v0, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->url:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public convertMidiSound()Lcom/codemao/creativestore/bean/SoundVO;
    .registers 3

    .line 284
    new-instance v0, Lcom/codemao/creativestore/bean/SoundVO;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/SoundVO;-><init>()V

    .line 285
    iget-object v1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/SoundVO;->setId(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/SoundVO;->setName(Ljava/lang/String;)V

    const-string v1, "mid"

    .line 287
    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/SoundVO;->setExt(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->qiniuUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/SoundVO;->setUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method public convertRecordSound(Ljava/lang/String;)Lcom/codemao/creativestore/bean/SoundVO;
    .registers 4

    .line 272
    new-instance v0, Lcom/codemao/creativestore/bean/SoundVO;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/SoundVO;-><init>()V

    .line 273
    iget-object v1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/SoundVO;->setId(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/SoundVO;->setName(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/SoundVO;->setExt(Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->qiniuUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/SoundVO;->setUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method public convertSound(Ljava/lang/String;)Lcom/codemao/creativestore/bean/SoundVO;
    .registers 4

    .line 259
    new-instance v0, Lcom/codemao/creativestore/bean/SoundVO;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/SoundVO;-><init>()V

    .line 260
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/SoundVO;->setId(Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/SoundVO;->setName(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/SoundVO;->setExt(Ljava/lang/String;)V

    .line 263
    iget-object p1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->url:Ljava/util/List;

    if-eqz p1, :cond_2e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2e

    .line 264
    iget-object p1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->url:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/SoundVO;->setUrl(Ljava/lang/String;)V

    :cond_2e
    return-object v0
.end method

.method public getAnimationDrawable(Landroid/content/res/AssetManager;)Landroid/graphics/drawable/AnimationDrawable;
    .registers 8

    .line 222
    invoke-virtual {p0}, Lcom/codemao/creativestore/bean/MaterialActorBean;->canAnim()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_68

    .line 223
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    const/4 v2, 0x0

    .line 224
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 225
    iget-object v2, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->url:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 228
    :try_start_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "webview/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_37} :catch_4a
    .catchall {:try_start_22 .. :try_end_37} :catchall_48

    .line 229
    :try_start_37
    invoke-static {v3, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v5, 0xc8

    .line 230
    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_40} :catch_46
    .catchall {:try_start_37 .. :try_end_40} :catchall_5a

    if-eqz v3, :cond_16

    .line 236
    :try_start_42
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_55

    goto :goto_16

    :catch_46
    move-exception v4

    goto :goto_4c

    :catchall_48
    move-exception p1

    goto :goto_5c

    :catch_4a
    move-exception v4

    move-object v3, v1

    .line 232
    :goto_4c
    :try_start_4c
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_5a

    if-eqz v3, :cond_16

    .line 236
    :try_start_51
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_16

    :catch_55
    move-exception v3

    .line 238
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16

    :catchall_5a
    move-exception p1

    move-object v1, v3

    :goto_5c
    if-eqz v1, :cond_66

    .line 236
    :try_start_5e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_66

    :catch_62
    move-exception v0

    .line 238
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 241
    :cond_66
    :goto_66
    throw p1

    :cond_67
    return-object v0

    :cond_68
    return-object v1
.end method

.method public getCategory_id()I
    .registers 2

    .line 185
    iget v0, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->category_id:I

    return v0
.end method

.method public getCenterPoint()Lcom/codemao/creativestore/bean/CenterPoint;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->centerPoint:Lcom/codemao/creativestore/bean/CenterPoint;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 161
    iget v0, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->id:I

    return v0
.end method

.method public getItemType()I
    .registers 2

    .line 136
    iget v0, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->itemType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getResourcePathList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->resourcePathList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->resourcePathList:Ljava/util/List;

    .line 204
    :cond_b
    iget-object v0, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->resourcePathList:Ljava/util/List;

    return-object v0
.end method

.method public getUrl()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->url:Ljava/util/List;

    return-object v0
.end method

.method public isCollectDeleteAble()Z
    .registers 2

    .line 117
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->isCollectDeleteAble:Z

    return v0
.end method

.method public isDeleteSelect()Z
    .registers 2

    .line 127
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->isDeleteSelect:Z

    return v0
.end method

.method public isNeedRename()Z
    .registers 2

    .line 251
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->needRename:Z

    return v0
.end method

.method public isSelected()Z
    .registers 2

    .line 213
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->isSelected:Z

    return v0
.end method

.method public setCategory_id(I)V
    .registers 2

    .line 189
    iput p1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->category_id:I

    return-void
.end method

.method public setCenterPoint(Lcom/codemao/creativestore/bean/CenterPoint;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->centerPoint:Lcom/codemao/creativestore/bean/CenterPoint;

    return-void
.end method

.method public setCollectDeleteAble(Z)V
    .registers 2

    .line 121
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->isCollectDeleteAble:Z

    .line 122
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->collectDeleteAble:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public setDeleteSelect(Z)V
    .registers 2

    .line 131
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->isDeleteSelect:Z

    .line 132
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->deleteSelect:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->ext:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 165
    iput p1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->id:I

    return-void
.end method

.method public setItemType(I)V
    .registers 2

    .line 141
    iput p1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->itemType:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 181
    iput-object p1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNeedRename(Z)V
    .registers 2

    .line 255
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->needRename:Z

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->path:Ljava/lang/String;

    return-void
.end method

.method public setResourcePathList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->resourcePathList:Ljava/util/List;

    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    .line 217
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->isSelected:Z

    .line 218
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->selected:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public setUrl(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->url:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaterialActorBean{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", category_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/creativestore/bean/MaterialActorBean;->category_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
