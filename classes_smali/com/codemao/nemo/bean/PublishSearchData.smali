.class public Lcom/codemao/nemo/bean/PublishSearchData;
.super Lcom/codemao/nemo/bean/BaseData;
.source "PublishSearchData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/bean/PublishSearchData$PublishData;
    }
.end annotation


# instance fields
.field public counted:Z

.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/PublishSearchData$PublishData;",
            ">;"
        }
    .end annotation
.end field

.field public limit:I

.field public offset:I

.field public total:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseData;-><init>()V

    return-void
.end method
