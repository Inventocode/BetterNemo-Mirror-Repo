.class public Lcom/codemao/creativestore/bean/Folder;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cover:Lcom/codemao/creativestore/bean/Image;

.field public images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 21
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/codemao/creativestore/bean/Folder;

    .line 22
    iget-object v0, v0, Lcom/codemao/creativestore/bean/Folder;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/creativestore/bean/Folder;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_b} :catch_c

    return p1

    :catch_c
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 26
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
