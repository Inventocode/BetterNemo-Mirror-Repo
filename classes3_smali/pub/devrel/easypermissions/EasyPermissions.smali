.class public Lpub/devrel/easypermissions/EasyPermissions;
.super Ljava/lang/Object;
.source "EasyPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpub/devrel/easypermissions/EasyPermissions$RationaleCallbacks;,
        Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;
    }
.end annotation


# direct methods
.method public static varargs hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .registers 7

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_f

    const-string p0, "EasyPermissions"

    const-string p1, "hasPermissions: API version < M, returning true by default"

    .line 77
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    if-eqz p0, :cond_23

    .line 89
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v0, :cond_22

    aget-object v4, p1, v3

    .line 90
    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1f

    return v2

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_22
    return v1

    .line 86
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t check permissions for null context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isUsingAndroidAnnotations(Ljava/lang/Object;)Z
    .registers 3

    .line 349
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    :cond_12
    :try_start_12
    const-string v0, "org.androidannotations.api.view.HasViews"

    .line 353
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 354
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_1c} :catch_1d

    return p0

    :catch_1d
    return v1
.end method

.method private static notifyAlreadyHasPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V
    .registers 7

    .line 293
    array-length v0, p2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 294
    :goto_5
    array-length v3, p2

    if-ge v2, v3, :cond_d

    .line 295
    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_d
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    .line 298
    invoke-static {p1, p2, v0, v2}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V
    .registers 10

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 179
    :goto_c
    array-length v4, p1

    if-ge v3, v4, :cond_1f

    .line 180
    aget-object v4, p1, v3

    .line 181
    aget v5, p2, v3

    if-nez v5, :cond_19

    .line 182
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 184
    :cond_19
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 189
    :cond_1f
    array-length p1, p3

    :goto_20
    if-ge v2, p1, :cond_56

    aget-object p2, p3, v2

    .line 191
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_34

    .line 192
    instance-of v3, p2, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    if-eqz v3, :cond_34

    .line 193
    move-object v3, p2

    check-cast v3, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    invoke-interface {v3, p0, v0}, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;->onPermissionsGranted(ILjava/util/List;)V

    .line 198
    :cond_34
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_44

    .line 199
    instance-of v3, p2, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    if-eqz v3, :cond_44

    .line 200
    move-object v3, p2

    check-cast v3, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    invoke-interface {v3, p0, v1}, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;->onPermissionsDenied(ILjava/util/List;)V

    .line 205
    :cond_44
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_53

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 206
    invoke-static {p2, p0}, Lpub/devrel/easypermissions/EasyPermissions;->runAnnotatedMethods(Ljava/lang/Object;I)V

    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_56
    return-void
.end method

.method public static varargs requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 5

    .line 112
    new-instance v0, Lpub/devrel/easypermissions/PermissionRequest$Builder;

    invoke-direct {v0, p0, p2, p3}, Lpub/devrel/easypermissions/PermissionRequest$Builder;-><init>(Landroid/app/Activity;I[Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, p1}, Lpub/devrel/easypermissions/PermissionRequest$Builder;->setRationale(Ljava/lang/String;)Lpub/devrel/easypermissions/PermissionRequest$Builder;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest$Builder;->build()Lpub/devrel/easypermissions/PermissionRequest;

    move-result-object p0

    .line 112
    invoke-static {p0}, Lpub/devrel/easypermissions/EasyPermissions;->requestPermissions(Lpub/devrel/easypermissions/PermissionRequest;)V

    return-void
.end method

.method public static requestPermissions(Lpub/devrel/easypermissions/PermissionRequest;)V
    .registers 10

    .line 141
    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest;->getHelper()Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest;->getPerms()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 143
    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest;->getHelper()Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lpub/devrel/easypermissions/helper/PermissionHelper;->getHost()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest;->getRequestCode()I

    move-result v1

    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest;->getPerms()[Ljava/lang/String;

    move-result-object p0

    .line 142
    invoke-static {v0, v1, p0}, Lpub/devrel/easypermissions/EasyPermissions;->notifyAlreadyHasPermissions(Ljava/lang/Object;I[Ljava/lang/String;)V

    return-void

    .line 148
    :cond_26
    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest;->getHelper()Lpub/devrel/easypermissions/helper/PermissionHelper;

    move-result-object v2

    .line 149
    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest;->getRationale()Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest;->getPositiveButtonText()Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest;->getNegativeButtonText()Ljava/lang/String;

    move-result-object v5

    .line 152
    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest;->getTheme()I

    move-result v6

    .line 153
    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest;->getRequestCode()I

    move-result v7

    .line 154
    invoke-virtual {p0}, Lpub/devrel/easypermissions/PermissionRequest;->getPerms()[Ljava/lang/String;

    move-result-object v8

    .line 148
    invoke-virtual/range {v2 .. v8}, Lpub/devrel/easypermissions/helper/PermissionHelper;->requestPermissions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)V

    return-void
.end method

.method private static runAnnotatedMethods(Ljava/lang/Object;I)V
    .registers 10

    const-string v0, "EasyPermissions"

    .line 309
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 310
    invoke-static {p0}, Lpub/devrel/easypermissions/EasyPermissions;->isUsingAndroidAnnotations(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 311
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    :cond_10
    :goto_10
    if-eqz v1, :cond_7a

    .line 315
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_19
    if-ge v5, v3, :cond_75

    aget-object v6, v2, v5

    .line 316
    const-class v7, Lpub/devrel/easypermissions/AfterPermissionGranted;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lpub/devrel/easypermissions/AfterPermissionGranted;

    if-eqz v7, :cond_72

    .line 319
    invoke-interface {v7}, Lpub/devrel/easypermissions/AfterPermissionGranted;->value()I

    move-result v7

    if-ne v7, p1, :cond_72

    .line 321
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-gtz v7, :cond_52

    .line 328
    :try_start_34
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v7

    if-nez v7, :cond_3e

    const/4 v7, 0x1

    .line 329
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_3e
    new-array v7, v4, [Ljava/lang/Object;

    .line 331
    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/lang/IllegalAccessException; {:try_start_34 .. :try_end_43} :catch_4b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_34 .. :try_end_43} :catch_44

    goto :goto_72

    :catch_44
    move-exception v6

    const-string v7, "runDefaultMethod:InvocationTargetException"

    .line 335
    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_72

    :catch_4b
    move-exception v6

    const-string v7, "runDefaultMethod:IllegalAccessException"

    .line 333
    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_72

    .line 322
    :cond_52
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot execute method "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because it is non-void method and/or has input parameters."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_72
    :goto_72
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 341
    :cond_75
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_10

    :cond_7a
    return-void
.end method
