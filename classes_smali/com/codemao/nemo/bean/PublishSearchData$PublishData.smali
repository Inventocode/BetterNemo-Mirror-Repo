.class public Lcom/codemao/nemo/bean/PublishSearchData$PublishData;
.super Ljava/lang/Object;
.source "PublishSearchData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/bean/PublishSearchData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PublishData"
.end annotation


# instance fields
.field public avatar_url:Ljava/lang/String;

.field public comment_times:J

.field public id:J

.field public n_blocks:I

.field public n_roles:I

.field public nickname:Ljava/lang/String;

.field public praise_times:J

.field public preview:Ljava/lang/String;

.field public publish_time:J

.field public screen_shot_preview:Ljava/lang/String;

.field public user_id:J

.field public view_times:J

.field public work_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
