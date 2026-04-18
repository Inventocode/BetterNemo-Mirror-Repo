.class public Lcom/codemao/creativestore/bean/Image;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/codemao/creativestore/bean/Image;->path:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/codemao/creativestore/bean/Image;->name:Ljava/lang/String;

    .line 19
    iput-wide p3, p0, Lcom/codemao/creativestore/bean/Image;->time:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 25
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/codemao/creativestore/bean/Image;

    .line 26
    iget-object v1, p0, Lcom/codemao/creativestore/bean/Image;->path:Ljava/lang/String;

    iget-object v0, v0, Lcom/codemao/creativestore/bean/Image;->path:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_b} :catch_c

    return p1

    :catch_c
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 30
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
