.class public Lcom/codemao/nemo/bean/ThemeTagInfo;
.super Ljava/lang/Object;
.source "ThemeTagInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private subject_items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;",
            ">;"
        }
    .end annotation
.end field

.field private work_id:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSubject_items()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/ProductTag;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/codemao/nemo/bean/ThemeTagInfo;->subject_items:Ljava/util/List;

    return-object v0
.end method
