.class public Lcom/codemao/creativestore/bean/BgCopyPropertyInfo;
.super Ljava/lang/Object;
.source "BgCopyPropertyInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private new_style_id:Ljava/lang/String;

.field private origin_style_id:Ljava/lang/String;

.field private scene_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/codemao/creativestore/bean/BgCopyPropertyInfo;->origin_style_id:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/codemao/creativestore/bean/BgCopyPropertyInfo;->new_style_id:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/codemao/creativestore/bean/BgCopyPropertyInfo;->scene_id:Ljava/lang/String;

    return-void
.end method
