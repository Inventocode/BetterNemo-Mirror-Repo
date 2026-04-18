.class interface abstract Lcom/qiniu/android/storage/UploadSource;
.super Ljava/lang/Object;
.source "UploadSource.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract couldReloadSource()Z
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getSize()J
.end method

.method public abstract readData(IJ)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract reloadSource()Z
.end method
