.class public Lcom/codemao/creativestore/bean/SoundRemovePropertyInfo;
.super Ljava/lang/Object;
.source "SoundRemovePropertyInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private sound_id:Ljava/lang/String;

.field private sound_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/codemao/creativestore/bean/SoundVO;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_6

    return-void

    .line 14
    :cond_6
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativestore/bean/SoundRemovePropertyInfo;->sound_id:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SoundVO;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/creativestore/bean/SoundRemovePropertyInfo;->sound_name:Ljava/lang/String;

    return-void
.end method
