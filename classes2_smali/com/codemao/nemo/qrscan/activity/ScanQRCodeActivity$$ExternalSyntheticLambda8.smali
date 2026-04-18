.class public final synthetic Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$$ExternalSyntheticLambda8;->f$0:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;

    iput-object p2, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$$ExternalSyntheticLambda8;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$$ExternalSyntheticLambda8;->f$0:Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;

    iget-object v1, p0, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity$$ExternalSyntheticLambda8;->f$1:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;->$r8$lambda$uGsJEbVVmFI_HlGW4ly9FPWZmy8(Lcom/codemao/nemo/qrscan/activity/ScanQRCodeActivity;Landroid/graphics/Bitmap;)V

    return-void
.end method
