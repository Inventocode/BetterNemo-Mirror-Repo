.class public Lcom/codemao/creativestore/bean/TheateConfigInfo;
.super Ljava/lang/Object;
.source "TheateConfigInfo.java"


# instance fields
.field public block_visible:Ljava/lang/String;

.field public enable_hide:Z

.field public hasBlockVisSet:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;Z)V
    .registers 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/TheateConfigInfo;->enable_hide:Z

    .line 10
    iput-object p2, p0, Lcom/codemao/creativestore/bean/TheateConfigInfo;->block_visible:Ljava/lang/String;

    .line 11
    iput-boolean p3, p0, Lcom/codemao/creativestore/bean/TheateConfigInfo;->hasBlockVisSet:Z

    return-void
.end method
