.class public Lcom/codemao/nemo/bean/BcmUpgradeVO;
.super Ljava/lang/Object;
.source "BcmUpgradeVO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/bean/BcmUpgradeVO$WorkVO;
    }
.end annotation


# instance fields
.field public total_upgrade_status:Z

.field public works:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/codemao/nemo/bean/BcmUpgradeVO$WorkVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
