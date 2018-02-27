package ${packageName};
 
import android.util.Log;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.iid.FirebaseInstanceIdService;
 
public class ${instanceServiceClass} extends FirebaseInstanceIdService {
private static final String TAG = ${instanceServiceClass}.class.getSimpleName();
    @Override
    public void onTokenRefresh() {
        super.onTokenRefresh();
         // Get updated InstanceID token.
		String refreshedToken = FirebaseInstanceId.getInstance().getToken();
		Log.d(TAG, "Refreshed token: " + refreshedToken);
 
    }
 
}