.class public Lcom/codemao/creativestore/bean/SoundsVO;
.super Ljava/lang/Object;
.source "SoundsVO.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private sounds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/SoundVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSounds()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/SoundVO;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/codemao/creativestore/bean/SoundsVO;->sounds:Ljava/util/Map;

    return-object v0
.end method

.method public setSounds(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/SoundVO;",
            ">;)V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/codemao/creativestore/bean/SoundsVO;->sounds:Ljava/util/Map;

    return-void
.end method
