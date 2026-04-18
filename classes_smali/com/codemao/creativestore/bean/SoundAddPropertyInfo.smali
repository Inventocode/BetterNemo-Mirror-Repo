.class public Lcom/codemao/creativestore/bean/SoundAddPropertyInfo;
.super Ljava/lang/Object;
.source "SoundAddPropertyInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private sounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/SoundVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/SoundVO;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SoundAddPropertyInfo;->sounds:Ljava/util/List;

    return-void
.end method
