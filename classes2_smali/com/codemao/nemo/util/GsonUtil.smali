.class public Lcom/codemao/nemo/util/GsonUtil;
.super Ljava/lang/Object;
.source "GsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/util/GsonUtil$GsonHolder;
    }
.end annotation


# direct methods
.method public static getInstance()Lcom/google/gson/Gson;
    .registers 1

    .line 14
    invoke-static {}, Lcom/codemao/nemo/util/GsonUtil$GsonHolder;->access$000()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method
