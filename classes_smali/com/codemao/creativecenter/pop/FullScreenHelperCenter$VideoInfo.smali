.class public Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;
.super Ljava/lang/Object;
.source "FullScreenHelperCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/pop/FullScreenHelperCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoInfo"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;->name:Ljava/lang/String;

    .line 317
    iput-object p2, p0, Lcom/codemao/creativecenter/pop/FullScreenHelperCenter$VideoInfo;->url:Ljava/lang/String;

    return-void
.end method
