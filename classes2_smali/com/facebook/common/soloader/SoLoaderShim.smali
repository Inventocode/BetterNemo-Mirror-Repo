.class public Lcom/facebook/common/soloader/SoLoaderShim;
.super Ljava/lang/Object;
.source "SoLoaderShim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/soloader/SoLoaderShim$DefaultHandler;,
        Lcom/facebook/common/soloader/SoLoaderShim$Handler;
    }
.end annotation


# static fields
.field private static volatile sHandler:Lcom/facebook/common/soloader/SoLoaderShim$Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lcom/facebook/common/soloader/SoLoaderShim$DefaultHandler;

    invoke-direct {v0}, Lcom/facebook/common/soloader/SoLoaderShim$DefaultHandler;-><init>()V

    sput-object v0, Lcom/facebook/common/soloader/SoLoaderShim;->sHandler:Lcom/facebook/common/soloader/SoLoaderShim$Handler;

    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .registers 2

    .line 56
    sget-object v0, Lcom/facebook/common/soloader/SoLoaderShim;->sHandler:Lcom/facebook/common/soloader/SoLoaderShim$Handler;

    invoke-interface {v0, p0}, Lcom/facebook/common/soloader/SoLoaderShim$Handler;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method
