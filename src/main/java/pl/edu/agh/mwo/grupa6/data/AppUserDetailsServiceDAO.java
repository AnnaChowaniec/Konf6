package pl.edu.agh.mwo.grupa6.data;
import java.util.Collection;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
 
public class AppUserDetailsServiceDAO implements UserDetailsService {
 
    protected final Log logger = LogFactory.getLog(getClass());

    @Override
    public UserDetails loadUserByUsername(final String username)
            throws UsernameNotFoundException {
         
        //creating dummy user details, should do JDBC operations
        UserDetails admin = new UserDetails() {
             
            private static final long serialVersionUID = 2059202961588104658L;
           
            @Override
            public boolean isEnabled() {
                return true;
            }
             
            @Override
            public boolean isCredentialsNonExpired() {
                return true;
            }
             
            @Override
            public boolean isAccountNonLocked() {
                return true;
            }
             
            @Override
            public boolean isAccountNonExpired() {
                return true;
            }
             
            @Override
            public String getUsername() {
                return "admin";
            }
             
            @Override
            public String getPassword() {
                return "admin";
            }
             
            @Override
            public Collection<? extends GrantedAuthority> getAuthorities() {
                List<SimpleGrantedAuthority> auths = new java.util.ArrayList<SimpleGrantedAuthority>();
                auths.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
                return auths;
            }
        };

        //creating dummy user details, should do JDBC operations
        UserDetails author = new UserDetails() {
             
            private static final long serialVersionUID = 2059202961588104658L;
           
            @Override
            public boolean isEnabled() {
                return true;
            }
             
            @Override
            public boolean isCredentialsNonExpired() {
                return true;
            }
             
            @Override
            public boolean isAccountNonLocked() {
                return true;
            }
             
            @Override
            public boolean isAccountNonExpired() {
                return true;
            }
             
            @Override
            public String getUsername() {
                return "author";
            }
             
            @Override
            public String getPassword() {
                return "author";
            }
             
            @Override
            public Collection<? extends GrantedAuthority> getAuthorities() {
                List<SimpleGrantedAuthority> auths = new java.util.ArrayList<SimpleGrantedAuthority>();
                auths.add(new SimpleGrantedAuthority("ROLE_AUTHOR"));
                return auths;
            }
        };
 
        UserDetails reviewer = new UserDetails() {
             
            private static final long serialVersionUID = 2059202961588104658L;
           
            @Override
            public boolean isEnabled() {
                return true;
            }
             
            @Override
            public boolean isCredentialsNonExpired() {
                return true;
            }
             
            @Override
            public boolean isAccountNonLocked() {
                return true;
            }
             
            @Override
            public boolean isAccountNonExpired() {
                return true;
            }
             
            @Override
            public String getUsername() {
                return "reviewer";
            }
             
            @Override
            public String getPassword() {
                return "reviewer";
            }
             
            @Override
            public Collection<? extends GrantedAuthority> getAuthorities() {
                List<SimpleGrantedAuthority> auths = new java.util.ArrayList<SimpleGrantedAuthority>();
                auths.add(new SimpleGrantedAuthority("ROLE_REVIEWER"));
                return auths;
            }
        };
        
        //creating dummy user details, should do JDBC operations
        UserDetails test = new UserDetails() {
             
            private static final long serialVersionUID = 2059202961588104658L;
           
            @Override
            public boolean isEnabled() {
                return true;
            }
             
            @Override
            public boolean isCredentialsNonExpired() {
                return true;
            }
             
            @Override
            public boolean isAccountNonLocked() {
                return true;
            }
             
            @Override
            public boolean isAccountNonExpired() {
                return true;
            }
             
            @Override
            public String getUsername() {
                return "test";
            }
             
            @Override
            public String getPassword() {
                return "test";
            }
             
            @Override
            public Collection<? extends GrantedAuthority> getAuthorities() {
                List<SimpleGrantedAuthority> auths = new java.util.ArrayList<SimpleGrantedAuthority>();
                auths.add(new SimpleGrantedAuthority("ROLE_AUTHOR"));
                auths.add(new SimpleGrantedAuthority("ROLE_REVIEWER"));
                auths.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
                return auths;
            }
        };

        logger.info("loadUserByUsername username="+username);

        if(username.equals("admin"))
        	return admin;
        else if (username.equals("author"))
        	return author;
        else if (username.equals("reviewer"))
        	return reviewer;
        else if (username.equals("test"))
        	return test;
        else
            throw new UsernameNotFoundException(username + " not found");

    }
 
}