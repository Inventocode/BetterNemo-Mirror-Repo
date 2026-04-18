.class public Lcom/ljwx/basedialog/common/BaseDialogConfig;
.super Ljava/lang/Object;
.source "BaseDialogConfig.java"


# static fields
.field public static commonLayout:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    sget v0, Lcom/ljwx/basedialog/R$layout;->base_dialog_example:I

    sput v0, Lcom/ljwx/basedialog/common/BaseDialogConfig;->commonLayout:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
