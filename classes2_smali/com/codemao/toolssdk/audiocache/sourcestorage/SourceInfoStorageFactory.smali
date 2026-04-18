.class public Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorageFactory;
.super Ljava/lang/Object;
.source "SourceInfoStorageFactory.java"


# direct methods
.method public static newEmptySourceInfoStorage()Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;
    .registers 1

    .line 17
    new-instance v0, Lcom/codemao/toolssdk/audiocache/sourcestorage/NoSourceInfoStorage;

    invoke-direct {v0}, Lcom/codemao/toolssdk/audiocache/sourcestorage/NoSourceInfoStorage;-><init>()V

    return-object v0
.end method

.method public static newSourceInfoStorage(Landroid/content/Context;)Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;
    .registers 2

    .line 13
    new-instance v0, Lcom/codemao/toolssdk/audiocache/sourcestorage/DatabaseSourceInfoStorage;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/audiocache/sourcestorage/DatabaseSourceInfoStorage;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
