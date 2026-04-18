.class public abstract Landroidx/documentfile/provider/DocumentFile;
.super Ljava/lang/Object;
.source "DocumentFile.java"


# direct methods
.method constructor <init>(Landroidx/documentfile/provider/DocumentFile;)V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;
    .registers 5

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_d

    .line 118
    new-instance v0, Landroidx/documentfile/provider/SingleDocumentFile;

    invoke-direct {v0, v1, p0, p1}, Landroidx/documentfile/provider/SingleDocumentFile;-><init>(Landroidx/documentfile/provider/DocumentFile;Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0

    :cond_d
    return-object v1
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract length()J
.end method
