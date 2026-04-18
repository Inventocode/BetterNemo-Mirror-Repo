.class public Lcom/codemao/toolssdk/audiocache/sourcestorage/NoSourceInfoStorage;
.super Ljava/lang/Object;
.source "NoSourceInfoStorage.java"

# interfaces
.implements Lcom/codemao/toolssdk/audiocache/sourcestorage/SourceInfoStorage;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/codemao/toolssdk/audiocache/SourceInfo;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Ljava/lang/String;Lcom/codemao/toolssdk/audiocache/SourceInfo;)V
    .registers 3

    return-void
.end method

.method public release()V
    .registers 1

    return-void
.end method
