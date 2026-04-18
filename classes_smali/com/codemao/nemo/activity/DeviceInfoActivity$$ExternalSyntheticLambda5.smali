.class public final synthetic Lcom/codemao/nemo/activity/DeviceInfoActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/codemao/nemo/activity/DeviceInfoActivity;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/nemo/activity/DeviceInfoActivity;Landroid/net/Uri;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$$ExternalSyntheticLambda5;->f$0:Lcom/codemao/nemo/activity/DeviceInfoActivity;

    iput-object p2, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$$ExternalSyntheticLambda5;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$$ExternalSyntheticLambda5;->f$0:Lcom/codemao/nemo/activity/DeviceInfoActivity;

    iget-object v1, p0, Lcom/codemao/nemo/activity/DeviceInfoActivity$$ExternalSyntheticLambda5;->f$1:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/DeviceInfoActivity;->$r8$lambda$KPIuKEZsVxkbNVr0P11oFVZkGTw(Lcom/codemao/nemo/activity/DeviceInfoActivity;Landroid/net/Uri;)V

    return-void
.end method
