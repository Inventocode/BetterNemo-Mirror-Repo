.class public Lcom/codemao/creativestore/bean/BcmUpgradeVO$WorkVO;
.super Ljava/lang/Object;
.source "BcmUpgradeVO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativestore/bean/BcmUpgradeVO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WorkVO"
.end annotation


# instance fields
.field public new_file_name:Ljava/lang/String;

.field public old_file_name:Ljava/lang/String;

.field public upgrade_status:I

.field public uuid:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
