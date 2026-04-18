.class public final Landroidx/navigation/NavDeepLink$Builder;
.super Ljava/lang/Object;
.source "NavDeepLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavDeepLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mUriPattern:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroidx/navigation/NavDeepLink;
    .registers 5

    .line 481
    new-instance v0, Landroidx/navigation/NavDeepLink;

    iget-object v1, p0, Landroidx/navigation/NavDeepLink$Builder;->mUriPattern:Ljava/lang/String;

    iget-object v2, p0, Landroidx/navigation/NavDeepLink$Builder;->mAction:Ljava/lang/String;

    iget-object v3, p0, Landroidx/navigation/NavDeepLink$Builder;->mMimeType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroidx/navigation/NavDeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;
    .registers 3

    .line 454
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 457
    iput-object p1, p0, Landroidx/navigation/NavDeepLink$Builder;->mAction:Ljava/lang/String;

    return-object p0

    .line 455
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The NavDeepLink cannot have an empty action."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMimeType(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;
    .registers 2

    .line 470
    iput-object p1, p0, Landroidx/navigation/NavDeepLink$Builder;->mMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setUriPattern(Ljava/lang/String;)Landroidx/navigation/NavDeepLink$Builder;
    .registers 2

    .line 438
    iput-object p1, p0, Landroidx/navigation/NavDeepLink$Builder;->mUriPattern:Ljava/lang/String;

    return-object p0
.end method
