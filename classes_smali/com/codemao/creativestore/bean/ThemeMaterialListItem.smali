.class public Lcom/codemao/creativestore/bean/ThemeMaterialListItem;
.super Landroidx/databinding/BaseObservable;
.source "ThemeMaterialListItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private actor_count:I

.field private download_url:Ljava/lang/String;

.field private id:I

.field private package_description:Ljava/lang/String;

.field private package_name:Ljava/lang/String;

.field private package_version:I

.field private pad_preview_url:Ljava/lang/String;

.field private preview_url:Ljava/lang/String;

.field private transient progress:I

.field private scene_count:I

.field private transient status:I

.field private update_time:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    return-void
.end method


# virtual methods
.method public getActor_count()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->actor_count:I

    return v0
.end method

.method public getDownload_url()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->download_url:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->id:I

    return v0
.end method

.method public getPackage_description()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->package_description:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage_version()I
    .registers 2

    .line 29
    iget v0, p0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->package_version:I

    return v0
.end method

.method public getPad_preview_url()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->pad_preview_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPreview_url()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->preview_url:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .registers 2

    .line 111
    iget v0, p0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->progress:I

    return v0
.end method

.method public getScene_count()I
    .registers 2

    .line 94
    iget v0, p0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->scene_count:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    .line 121
    iget v0, p0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->status:I

    return v0
.end method

.method public getUpdate_time()J
    .registers 3

    .line 78
    iget-wide v0, p0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->update_time:J

    return-wide v0
.end method

.method public setActor_count(I)V
    .registers 2

    .line 90
    iput p1, p0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->actor_count:I

    return-void
.end method

.method public setDownload_url(Ljava/lang/String;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->download_url:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 41
    iput p1, p0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->id:I

    return-void
.end method

.method public setPackage_description(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->package_description:Ljava/lang/String;

    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->package_name:Ljava/lang/String;

    return-void
.end method

.method public setPackage_version(I)V
    .registers 2

    .line 33
    iput p1, p0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->package_version:I

    return-void
.end method

.method public setPad_preview_url(Ljava/lang/String;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->pad_preview_url:Ljava/lang/String;

    return-void
.end method

.method public setPreview_url(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->preview_url:Ljava/lang/String;

    return-void
.end method

.method public setProgress(I)V
    .registers 2

    .line 115
    iput p1, p0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->progress:I

    .line 116
    sget p1, Lcom/codemao/creativecenter/BR;->progress:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public setScene_count(I)V
    .registers 2

    .line 98
    iput p1, p0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->scene_count:I

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    .line 125
    iput p1, p0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->status:I

    .line 126
    sget p1, Lcom/codemao/creativecenter/BR;->status:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public setUpdate_time(J)V
    .registers 3

    .line 82
    iput-wide p1, p0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;->update_time:J

    return-void
.end method
