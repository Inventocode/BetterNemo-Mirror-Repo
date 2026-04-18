.class Lcom/codemao/creativecenter/utils/RecordHelper$Holder;
.super Ljava/lang/Object;
.source "RecordHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/utils/RecordHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static recodeHelper:Lcom/codemao/creativecenter/utils/RecordHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 203
    new-instance v0, Lcom/codemao/creativecenter/utils/RecordHelper;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/RecordHelper;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/utils/RecordHelper$Holder;->recodeHelper:Lcom/codemao/creativecenter/utils/RecordHelper;

    return-void
.end method

.method static synthetic access$000()Lcom/codemao/creativecenter/utils/RecordHelper;
    .registers 1

    .line 202
    sget-object v0, Lcom/codemao/creativecenter/utils/RecordHelper$Holder;->recodeHelper:Lcom/codemao/creativecenter/utils/RecordHelper;

    return-object v0
.end method
